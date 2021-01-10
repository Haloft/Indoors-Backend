# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

projects = Project.create([

    {
        done:false,
        date: '2020-08-23',
        name: 'Oulun kaupunki',
        customer: 'Suomen valtio'
    },
    {
        done:true,
        date: '2020-08-12',
        name: 'Föödisköödi',
        customer: 'FooBar'
    }
])

tasks = Task.create([

{
    name: 'Paskan lapiointi',
    hours: 5,
    project: projects.first
},
{
    name: 'Paskan lapiointi',
    hours: 5,
    project: projects.first
}
])