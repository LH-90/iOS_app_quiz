//
//  Question.swift
//  Culture Quiz
//
//  Created by Léa Henry on 22/03/2024.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
            Question(questionText: "Which technology company is not based in Silicon Valley?",
                     possibleAnswers: [
                        "Microsoft",
                        "Apple",
                        "Google",
                        "Meta"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "Which US president is not on the Mount Rushmore?",
                     possibleAnswers: [
                        "Thomas Jefferson",
                        "Abraham Lincoln",
                        "Franklin D. Roosevelt",
                        "George Washington"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "Which animals are not in a song title in the album \"Animals\" by Pink Floyd?",
                     possibleAnswers: [
                        "Dogs",
                        "Horses",
                        "Sheep",
                        "Pigs"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "Which town is not in Republic of Ireland?",
                     possibleAnswers: [
                        "Belfast",
                        "Galway",
                        "Sligo",
                        "Cork"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "In patisserie, what is the name of a pastry cream mixed with a whipped cream?",
                     possibleAnswers: [
                        "Bavarian",
                        "Mousseline",
                        "Diplomate",
                        "Chiboust"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "Which base is present in both DNA and RNA ?",
                     possibleAnswers: [
                        "A",
                        "U",
                        "T",
                        "N"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "Which movie was not adapted from a theatre play?",
                     possibleAnswers: [
                        "A streetcar named desire",
                        "Dial M for murder",
                        "The father",
                        "Sunset Boulevard"
                     ],
                     correctAnswerIndex: 3),
            Question(questionText: "Which of these events happened first?",
                     possibleAnswers: [
                        "Reunification of Germany",
                        "Invention of the World Wide Web",
                        "Opening of the Channel tunnel",
                        "First mammal cloned"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "Which person didn't exist in real life?",
                     possibleAnswers: [
                        "Calamity Jane",
                        "Forrest Gump",
                        "John Snow",
                        "Pocahontas"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "According to the legend, who received an apple while seated under a tree?",
                     possibleAnswers: [
                        "William Tell",
                        "Alan Turing",
                        "Isaac Newton",
                        "Steve Jobs"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "Which book was not written in the 19th century?",
                     possibleAnswers: [
                        "The picture of Dorian Gray",
                        "Les misérables",
                        "Wuthering Heights",
                        "Gone with the wind"
                     ],
                     correctAnswerIndex: 3),
            Question(questionText: "What is the second largest country in the world?",
                     possibleAnswers: [
                        "Australia",
                        "Canada",
                        "Brazil",
                        "China"
                     ],
                     correctAnswerIndex: 1),
        ]
}
