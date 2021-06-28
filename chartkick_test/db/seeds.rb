# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
    [60,10,'2020-1-1'],
    [65,12,'2020-2-1'],
    [70,14,'2020-3-1'],
    [75,16,'2020-4-1'],
    [80,18,'2020-5-1'],
    [85,20,'2020-6-1'],
    [75,10,'2020-7-1'],
    [80,12,'2020-8-1'],
    [85,14,'2020-9-1'],
    [90,16,'2020-10-1'],
    [92,18,'2020-11-1'],
    [94,20,'2020-12-1'],
    [84,10,'2021-1-1'],
    [88,12,'2021-2-1'],
    [92,14,'2021-3-1'],
    [94,16,'2021-4-1'],
].each do |record|
    BodyDatum.create(
        weight: record[0],
        fat: record[1],
        date: record[2]
        )
        
    end