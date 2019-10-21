# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PressureTest.Repo.insert!(%PressureTest.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PressureTest.Repo
alias PressureTest.Posts.Post

1..1000
|> Enum.each(fn x ->
  Repo.insert(%Post{title: "title #{x}", desc: "desc: #{x}"})
end)
