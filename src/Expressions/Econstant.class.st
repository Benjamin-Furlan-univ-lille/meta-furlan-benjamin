Class {
	#name : #Econstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
Econstant class >> constant3 [
	<sampleInstance>
	^ self new value: 3. 
]

{ #category : #accessing }
Econstant class >> constant5 [
	<sampleInstance>
	^ self new value: 5. 
]

{ #category : #accessing }
Econstant class >> value: anInteger [
	^ self new value: anInteger. 
]

{ #category : #'as yet unclassified' }
Econstant >> acceptVisitor: aVisitor [
	aVisitor visiteEConstant: self.
	
]

{ #category : #'as yet unclassified' }
Econstant >> evaluate [
	^ value
]

{ #category : #'as yet unclassified' }
Econstant >> printOn: aStream [
	aStream nextPutAll: value printString 
]

{ #category : #'as yet unclassified' }
Econstant >> value [
	^ value.

]

{ #category : #'as yet unclassified' }
Econstant >> value: anInteger [ 
	value:= anInteger.
	^ self
]
