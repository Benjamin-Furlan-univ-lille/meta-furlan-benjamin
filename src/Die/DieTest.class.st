Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Die
}

{ #category : #tests }
DieTest >> testAddingHandle [ 
	| aDie otherhandle handle |
	aDie:= Die withFaces: 6.
	otherhandle:= 24 D20.
	handle := aDie + otherhandle .
	self assert: handle diceNumber equals:25
]

{ #category : #tests }
DieTest >> testAddingWith1Die [ 
	| aDie otherDie handle |
	aDie:= Die withFaces: 6.
	otherDie:= Die withFaces: 20.
	handle := aDie + otherDie.
	self assert: handle diceNumber equals:2
]

{ #category : #tests }
DieTest >> testCreationIsOk [
   self assert: ( Die withFaces:20) face equals:20
]

{ #category : #tests }
DieTest >> testInitializeIsOk [
   self assert: Die new face equals:6.

]

{ #category : #tests }
DieTest >> testRolling [
   | d |
   d:= Die new.
   10 timesRepeat: [ self assert: (d roll between: 1 and:6 ) ]
]
