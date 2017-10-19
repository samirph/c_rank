class ApiRequests
  def self.get_companies
    response = HTTParty.get("http://tadepe.transparencia.org.br/api/projects/content", headers: {"Authorization" => Token}).parsed_response
  end

  def self.get_url url, params = {}
    response = HTTParty.get(url, headers: {"Authorization" => Token}, params: params).parsed_response
  end

  def self.inspections link = 'http://tadepe.transparencia.org.br/api/inspections/content'
    page = 1
    response = HTTParty.get(link, headers: {"Authorization" => Token}).parsed_response
    response['data'].each do |r|
      a = r['attributes']
      Inspection.create({
          project_id: a['project-id'],
          status: a['status'],
          comment: a['comment']
        })
    end
    while response['links']['next'].present?
      page += 1
      response = HTTParty.get('http://tadepe.transparencia.org.br/api/inspections/content?page='+page.to_s, headers: {"Authorization" => Token}).parsed_response
      response['data'].each do |r|
        a = r['attributes']
        Inspection.create({
            project_id: a['project-id'],
            status: a['status'],
            comment: a['comment']
          })
      end
    end
  end

end
