module CanadaPost
  class Rate

    attr_accessor :service_type, :service_code, :transit_time, :total_net_charge, :rate_type, :total_base_charge
    attr_accessor :options
    def initialize(options={})
      # pp "----Rate options"
      # pp options
      # pp "Rate Options ---------"

      # @service_type = options[:service_name]
      # @service_code = options[:service_code]
      # @total_net_charge = options.dig(:price_details, :due)
      # @total_base_charge = options.dig(:price_details, :base)
      # @gst_taxes = options.dig(:price_details, :taxes, :gst)
      # @pst_taxes = options.dig(:price_details, :taxes, :pst)
      # @hst_taxes = options.dig(:price_details, :taxes, :hst)
      # @transit_time = options.dig(:service_standard, :expected_transit_time)
      @options = options
    end

    def total_taxes
      # (@gst_taxes.to_f + @pst_taxes.to_f + @hst_taxes.to_f).to_s
    end
  end
end
