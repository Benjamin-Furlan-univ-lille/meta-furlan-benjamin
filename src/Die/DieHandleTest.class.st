Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Die
}

{ #category : #tests }
DieHandleTest >> testAddingAnHandleWith1Die [
	|handle res|
	handle := DieHandle new
	addDie: (Die withFaces: 5);
	addDie: (Die withFaces: 7);
	addDie: (Die withFaces: 10);
	yourself.
   res:= handle + (Die withFaces:20).
	self assert: res diceNumber equals:4
]

{ #category : #tests }
DieHandleTest >> testAddingAnHandleWith2Die [
	|handle res|
	handle := DieHandle new
	addDie: (Die withFaces: 5);
	addDie: (Die withFaces: 7);
	addDie: (Die withFaces: 10);
	yourself.
   res:= handle + (5 D4).
	self assert: res diceNumber equals:8
]

{ #category : #tests }
DieHandleTest >> testAddingTwiceTheSameDice [
    | handle |
    handle:= DieHandle new.
    handle addDie: ( Die withFaces:6).
	 self assert: handle diceNumber = 1 .
	 handle addDie: ( Die withFaces:6).
	 self assert: handle diceNumber equals:2.
	
]

{ #category : #tests }
DieHandleTest >> testCreationAdding [
   | handle |
   handle:= DieHandle new
         addDie: ( Die withFaces:6);
         addDie: ( Die withFaces:20);
         yourself.
   self assert: handle diceNumber equals:2 

]

{ #category : #tests }
DieHandleTest >> testRoll [
   | d | 
   d:= DieHandle new.
   d addDie: (Die withFaces: 6); addDie:( Die withFaces:6);
   yourself.
   d roll. 
   d handle do: [ :each | each assert: (each face between: 1 and: 6)  ].
   
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle [
   self assert: 2 D20 diceNumber = 2
]

{ #category : #tests }
DieHandleTest >> testSumming [
	| handle | 
	handle := 3 D20 + 2 D6.
	self assert: handle diceNumber equals:5
	
]

{ #category : #tests }
DieHandleTest >> testdiceNumber [
	self assert: 2 D10 diceNumber equals: 2.
	self assert: 2 D10 class equals: DieHandle 
]
