module SelectProductsHelper

  def display_timeframe(tf)
    if tf == "0"
      tfr = "immediately"
    end
    if tf ==  "1"
      tfr = "in the next month"
    end
    if tf == "6"
      tfr = "in the next six months"
    end
    if tf == "12"
      tfr = "in the next year"
    end
    if tf == "99"
      tfr = "Just looking, thanks"
    end
    return tfr
  end

end
