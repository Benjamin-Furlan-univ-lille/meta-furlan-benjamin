Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'handle'
	],
	#category : #Die
}

{ #category : #'as yet unclassified' }
DieHandle >> addDie: aDie [ 
	handle add: aDie 
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	 ^ handle size.
]

{ #category : #'as yet unclassified' }
DieHandle >> initialize [
   super initialize.
   handle:= Set new.

]
