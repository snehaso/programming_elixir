defmodule Child do
  def create_process(sender) do
    send sender, {:ok, "message" }
    raise RuntimeError, message: "Did it by purpose"
  end

  def check_for_message do
    receive do
        {:ok, message} ->
        IO.puts "received message string #{message}"
        check_for_message
    after 500 ->
      IO.puts "no more messages"
    end
  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_link Child, :create_process, [self]
    :timer.sleep(500)
    check_for_message
  end
end

Child.run
