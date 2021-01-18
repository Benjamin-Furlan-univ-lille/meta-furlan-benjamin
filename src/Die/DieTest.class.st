Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Die
}

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
