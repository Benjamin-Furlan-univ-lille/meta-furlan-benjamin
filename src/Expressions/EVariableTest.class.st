Class {
	#name : #EVariableTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EVariableTest >> testEvaluateXplusY [
	| ep1 ep2 add|
	ep1:= EVariable id:#x.
	ep2:= EVariable id:#y.
	add:= EAddition right:ep1 left: ep2.
	
	self assert: (add evaluateWith: { #x -> 10 . #y -> 4 } asDictionary ) equals:14.
	self assert: (add evaluateWith: { #x -> 8 . #y -> 8 } asDictionary ) equals:16.
]

{ #category : #tests }
EVariableTest >> testEvaluateXtimesY [
	| ep1 ep2 add|
	ep1:= EVariable id:#x.
	ep2:= EVariable id:#y.
	add:= EMultiplication right:ep1 left: ep2.
	
	self assert: (add evaluateWith: { #x -> 10 . #y -> 4 } asDictionary ) equals:40.
	self assert: (add evaluateWith: { #x -> 8 . #y -> 8 } asDictionary ) equals:64.
]

{ #category : #tests }
EVariableTest >> testValuesOfx [
	self assert: ((EVariable new id: #x) evaluateWith: { #x -> 10 } asDictionary ) equals:10.
]

{ #category : #tests }
EVariableTest >> testValuesOfxInNegation [
	self assert: ((EVariable new id: #x) negated  evaluateWith: { #x -> 10 } asDictionary ) equals:-10.
]
