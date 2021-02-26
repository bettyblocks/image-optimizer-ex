defmodule ImageOptimizerEx do
  alias ImageOptimizerEx.Optimizer

  @doc """
  This optimize function

  src for the source file
  dst to where the image will be written to
  options = %{
    quality: percentage of quality jpg image can be converted to
    verbose: allow verbose output by default it's hidden
  }
  """
  def optimize(src, dst, options \\ %{}) do
    cond do
      Enum.member?([".jpg", ".jpeg"], Path.extname(src)) ->
        Optimizer.Jpeg.optimize(src, dst, options)
      Enum.member?([".png"], Path.extname(src)) ->
        Optimizer.Png.optimize(src, dst, options)
      true ->
        {:ok, 0}
    end
  end
end
