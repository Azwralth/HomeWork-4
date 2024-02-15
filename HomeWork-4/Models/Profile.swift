//
//  Profile.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 13.02.2024.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getProfileUser() -> User {
        User(
            login: "User",
            password: "User",
            person: Person(
                name: "Vlad",
                lastName: "Sokolov",
                age: "28",
                job: "ArgoSmart",
                position: "Product Manager",
                description: """
                Родился в городе Новоуральск.
                Это небольшой город атомной промышленности в Свердловской области.
                Учился в английской гимназии, после школы поступил в УрГУПС.
                Во время учебы в университете подрабатывал в Сбербанке.
                
                После учебы начал работать на постоянной основе в Управлении Торгового финансирования, где прошел путь
                от обычного специалиста до исполнительного директора.
                В 2021 году решил попробовать себя в качестве Product Lead в трайбе TradeFinance.
                На данный момент живу в Вене и работаю удаленно в качестве Product Manager в IT-компании.
                """
            )
        )
    }
}

struct Person {
    let name: String
    let lastName: String
    let age: String
    let job: String
    let position: String
    let description: String
}
