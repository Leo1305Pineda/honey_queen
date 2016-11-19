


if params[:page].eql?("*")
	json.marcas @marcas, partial: 'marcas/marca', as: :marca
	json.token  form_authenticity_token
else
	json.marcas @marcas, partial: 'marcas/marca', as: :marca
	json.extract! @marcas, :per_page, :total_entries, :current_page 
	json.token  form_authenticity_token
end 


