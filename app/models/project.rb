class Project < ApplicationRecord
  def self.import
    # TODO: CSV file path is hardcoded. Should make it a feature
    csv = CSV.read('obras.csv', encoding: 'ISO-8859-4', quote_char: "^", col_sep: ';')
    csv.shift
    csv.each do |c|
      begin
        Project.create({
          simec_id: c[0],
          name: c[1],
          status: c[2],
          city: c[3],
          state: c[4],
          postal_code: c[5],
          address: c[6],
          term: c[7],
          term_end: c[8],
          term_status: c[9],
          percentual: c[10],
          expected_date: c[11],
          education_date: c[12],
          project_type: c[13],
          build_type: c[14],
          project_classification: c[16],
          value_by_fnde: c[17],
          education_network: c[18],
          cnpj: c[19],
          state_registration: c[20],
          entity_name: c[21],
          social_name: c[22],
          email: c[23],
          abbreviation: c[24],
          comercial_phone: c[25],
          cep: c[27],
          address_entity: c[28],
          entity_complement: c[29],
          entity_number: c[30],
          entity_neighborhood: c[31],
          entity_state: c[32],
          bidding_modality: c[34],
          bidding_number: c[35],
          bidding_approval: c[36],
          company: c[37],
          contract_signed_at: c[38],
          deadline: c[39],
          contract_end: c[40],
          contract_value: c[41],
          inspection_status: c[44],
          amount_paid: c[46],
          percentual_paid: c[47]
          })
        rescue

        end
    end
  end

  def self.associate_with_company
    Project.all.each do |project|
      begin
        cnpj = (project.company || "").split(')')[0].gsub('(','').gsub("\"",'')
        company = Company.find_by(cnpj: cnpj)
        project.update(company_id: company.id)
      rescue
      end
    end
  end
end
