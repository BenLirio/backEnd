class InvoicesController < ProtectedController
  before_action :set_invoice, only: %i[update destroy]

  # GET /invoices
  def index
    # only gets the current users invoices on index
    @invoices = current_user.invoices.all

    render json: @invoices
  end

  # GET /invoices/1
  def show
    # Currentlly open read for single invoices.
    # should figure out a way to privatize it
    render json: Invoice.find(params[:id])
  end

  # POST /invoices
  def create
    @invoice = current_user.invoices.build(invoice_params)

    if @invoice.save
      render json: @invoice, status: :created, location: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoices/1
  def update
    if @invoice.update(invoice_params)
      render json: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoices/1
  def destroy
    @invoice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invoice_params
      params.require(:invoice).permit(:invoice_id, :service, :price)
    end
end
