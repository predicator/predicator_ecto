defmodule Predicator.PredicateType do
  @behaviour Ecto.Type

  import Poison, only: [
    encode!: 1,
    decode!: 1
  ]

  def type, do: :string

  def cast(predicate) when is_binary(predicate), do: {:ok, decode!(predicate)}
  def cast(predicate) when is_list(predicate), do: {:ok, predicate}
  def cast(_), do: :error

  def load(data) when is_binary(data), do: {:ok, decode!(data)}
  def load(_data), do: :error

  def dump(data) when is_list(data), do: encode!(data)
  def dump(_data), do: :error
end
