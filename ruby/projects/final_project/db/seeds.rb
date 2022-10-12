# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Creating plans
Plan.create([
  {
    name: "Basic",
    period: 31,
    period_type: "days",
    price_cents: Money.from_cents(1000),
    price_currency: "USD"
  },
  {
    name: "Plus",
    period: 3,
    period_type: "months",
    price_cents: Money.from_cents(1800),
    price_currency: "USD"
  },
  {
    name: "Premium",
    period: 1,
    period_type: "years",
    price_cents: Money.from_cents(3500),
    price_currency: "USD"
  }
])

# Creating users
admin = User.create({ email: 'admin@admin.com', password: 'pass123', role: 2 })

manager = User.create({ email: 'manager@test.com', password: 'pass123', role: 1 })

user = User.create({ email: 'user1@test.com', password: 'pass123', role: 0 })

# Creating teams
team = Team.create({ name: "The best team" })

# Creating boards
Board.create({ title: "Private board", visibility: 1, team: team})
Board.create({ title: "Public board", visibility: 0, team: team })


Board.all.each do |board|
  board.task_lists << TaskLists.create({ title: "To Do", color: 'grey', priority: 1 })
  board.task_lists << TaskLists.create({ title: "In Progress", color: 'blue', priority: 2 })
  board.task_lists << TaskLists.create({ title: "Testing", color: 'orange', priority: 3 })
  board.task_lists << TaskLists.create({ title: "Done", color: 'green', priority: 4 })
end

TaskLists.last(7).each do |task_list|
  task_list.tasks << Task.create({ title: "My first task" })
end