
User.create(name: "Yassi", password: "blahblah", email: "yassimortensen@gmail.com")

Goal.create(user_id: 1, name: "Meditate", description: "Meditate every morning", frequency: 5, binary: TRUE)
  365.times do |count|
    if count === 0
      Log.create(goal_id: 1, date: Date.today, binary_input: FALSE)
    else
      Log.create(goal_id: 1, date: Date.today-count, binary_input: [TRUE, FALSE].shuffle[0])
    end
  end

Goal.create(user_id: 1, name: "Water Intake", description: "Drink 90oz of water daily", frequency: 7, binary: FALSE, amount: 90, unit: "oz")
  365.times do |count|
    if count == 0
      Log.create(goal_id: 2, date: Date.today, amount_input: 90)
    else
      Log.create(goal_id: 2, date: Date.today-count, amount_input: [40, 50, 60, 70, 80, 90, 100].shuffle[0])
    end
  end

Goal.create(user_id: 1, name: "Sleep", description: "Sleep at least 8 hours daily", frequency: 7, binary: FALSE, amount: 8, unit: "hours")
  365.times do |count|
    if count == 0
      Log.create(goal_id: 3, date: Date.today, amount_input: 8)
    else
      Log.create(goal_id: 3, date: Date.today-count, amount_input: (5..10).to_a.shuffle[0])
    end
  end
