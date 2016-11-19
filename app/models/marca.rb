class Marca < ApplicationRecord




	def self.search(page = 1,search)
		search ||= ""
		page = 1 if page.to_i.zero?
		if search.empty?
			paginate(page: page).order(:marca)
		else 
			paginate(page: page).nombre_search(search)
		end 
	end

	def self.nombre_search(search)
		where("#{table_name}.marca like ?","%#{search}%")
	end 

	def self.a_nombre; arel_table[:marca]; end  


end
