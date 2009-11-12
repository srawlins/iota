module Iota
  @@iota = -1
  
  def iota(names = nil)
    if names.nil?
      @@iota += 1
      return @@iota
    end
    
    values = []
    names.each do |name|
      @@iota += 1
      if block_given?
        Iota.const_set name, yield(@@iota)
      else
        Iota.const_set name, @@iota
      end
      values << Iota.const_get(name.to_sym)
    end
    values
  end
  
  def set_iota(value = 0)
    @@iota = value - 1
  end
end