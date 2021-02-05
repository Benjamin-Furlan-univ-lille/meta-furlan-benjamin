Class {
	#name : #EPrintor,
	#superclass : #Visitor,
	#instVars : [
		'stream',
		'level'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EPrintor >> stream: anStream [ 
	stream := anStream
]

{ #category : #'as yet unclassified' }
EPrintor >> visiteAddition: anEAddition [ 
	stream nextPutAll: '('. 
	anEAddition left acceptVisitor: self.
	stream nextPutAll: '+'.
	anEAddition right acceptVisitor: self.
	stream nextPutAll: ')'.
]

{ #category : #'as yet unclassified' }
EPrintor >> visiteEConstant: anEConstant [
	stream nextPutAll: anEConstant value printString
]

{ #category : #'as yet unclassified' }
EPrintor >> visiteMultiplication: anEMultiplication [
	stream nextPutAll: '('.
	anEMultiplication left acceptVisitor: self .
	stream nextPutAll: '*'.
	anEMultiplication right acceptVisitor: self .
	stream nextPutAll: ')'.
	 
]

{ #category : #'as yet unclassified' }
EPrintor >> visiteNegation: anENegation [
	stream nextPutAll: '-'.
	anENegation expression.
	
	 
]

{ #category : #'as yet unclassified' }
EPrintor >> visiteRaisedTo: anERaisedTo [ 
	stream nextPutAll: '('.
	anERaisedTo left acceptVisitor: self.
	stream nextPutAll: '^'.
	anERaisedTo right acceptVisitor: self.
	stream nextPutAll: ')'.
	
]

{ #category : #'as yet unclassified' }
EPrintor >> visiteVariable: anEVariable [
	stream nextPutAll: anEVariable id.
	
	 
]
