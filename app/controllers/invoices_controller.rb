class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def new
    @orders = Order.order('title')
  end

  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      redirect_to invoices_url, notice: "Invoice created"
    else
      @orders = Order.order('title')

      flash['alert'] = "Unable to create invoice"
      render :new
    end
  end

  private

    def invoice_params
      params.require(:invoice).permit(order_ids: [])
    end
end
