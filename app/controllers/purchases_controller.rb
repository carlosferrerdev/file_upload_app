class PurchasesController < ApplicationController
  def new
  end

  def create
    file = params[:file].tempfile
    purchases = []
    File.readlines(file).each_with_index do |line, index|
      next if index == 0 # Ignora o cabeçalho
      fields = line.strip.split("\t")
      purchase = Purchase.new(
        purchaser_name: fields[0],
        item_description: fields[1],
        item_price: fields[2].to_f,
        purchase_count: fields[3].to_i,
        merchant_address: fields[4],
        merchant_name: fields[5]
      )
      purchases << purchase
    end
    Purchase.import purchases # Usa o método import do active record para salvar todos os registros de uma vez
    redirect_to purchase_path(id: 1) # Redireciona para a página que mostra o total de vendas
  end


  def show
    @total_gross_income = Purchase.sum("item_price * purchase_count")
  end
end
