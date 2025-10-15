defmodule LogLevel do

  def to_label(level, legacy?) do
    case level do
      0 ->     case legacy? do
        true -> :unknown
        false -> :trace
    end
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
      5 ->     case legacy? do
        true -> :unknown
        false -> :fatal
    end
      _ -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      label == :error -> :ops
      label == :fatal -> :ops
      label == :unknown && legacy? -> :dev1
      label == :unknown -> :dev2
      true -> false
    end
  end
end
