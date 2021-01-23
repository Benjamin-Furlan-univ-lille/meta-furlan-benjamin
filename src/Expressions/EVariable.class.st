Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EVariable class >> id: aString [ 
	^ self new id: aString.
]

{ #category : #'as yet unclassified' }
EVariable >> evaluateWith: aBindingDictionary [ 
	^ (aBindingDictionary at: id) .
]

{ #category : #'as yet unclassified' }
EVariable >> id: aString [ 
	id:=aString.
]

{ #category : #'as yet unclassified' }
EVariable >> printOn: aStream [
	aStream nextPutAll: id asString.
]
