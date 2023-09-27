# frozen_string_literal: true

module Towable
  def can_tow?(kilos)
    kilos < 2000 ? "Yes can tow this #{kilos} trailer!" : "No, this #{kilos} trailer is too heavy!"
  end
end

