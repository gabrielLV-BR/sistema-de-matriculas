module ApplicationHelper
  def enum_to_translated_select (hash, preffix:)
    preffix = preffix.join(".") if preffix.kind_of? Array
    preffix << "." if not preffix.end_with? "."

    return hash
      .map { |k, v| [k.to_s, v] }
      .map {
        |k, v| [I18n.t(preffix + k, default: k), k]
      }.to_h
  end
end
