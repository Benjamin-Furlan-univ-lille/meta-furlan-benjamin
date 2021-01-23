Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'handle'
	],
	#category : #Die
}

{ #category : #'as yet unclassified' }
DieHandle >> + aDicable [ 
	^ aDicable sumWithHandle: self
]

{ #category : #'as yet unclassified' }
DieHandle >> addAll: aCollection [ 
	aCollection do:[:each | self addDie:each];
	yourself.
	^ self
]

{ #category : #'as yet unclassified' }
DieHandle >> addDie: aDie [ 
	handle add: aDie 
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	 ^ handle size.
]

{ #category : #'as yet unclassified' }
DieHandle >> handle [ 
   ^ handle 
]

{ #category : #'as yet unclassified' }
DieHandle >> initialize [
   super initialize.
   handle:= Set new.

]

{ #category : #'as yet unclassified' }
DieHandle >> roll [
	handle:= handle do: [:each | each roll  ]
	
]

{ #category : #'as yet unclassified' }
DieHandle >> sumWithDie: aDie [ 
	| hand |
	hand:=self class new.
	self handle do: [ :each | hand addDie: each ].
	hand addDie: aDie.
	^ hand
]

{ #category : #'as yet unclassified' }
DieHandle >> sumWithHandle: aDieHandle [
	| hand |
	hand:=self class new.
	self handle do: [ :each | hand addDie: each ].
	aDieHandle handle do:[ :each | hand addDie: each ].
	^ hand
]
