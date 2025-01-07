//
//  main.swift
//  3.4_Adyamov
//
//  Created by Диас Адямов  on 07.01.2025.
//
import Foundation
print("Введите исходный текст")
var inputText = readLine()
print("Введите текст для замены")
var inputChangeText = readLine()
print ("На что нужно заменить \"ли\"?")
var inputReplaceText = readLine()
print ("Результат:")
var string = "А не спеть ли мне песню о любви? А не выдумать ли новый жанр?"
string.replace("ли", with:"ка")
print(string)

