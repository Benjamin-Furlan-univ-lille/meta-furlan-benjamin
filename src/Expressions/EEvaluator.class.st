Class {
	#name : #EEvaluator,
	#superclass : #Visitor,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EEvaluator >> visiteAddition: anEAddition [ 
	| l r |
	r := anEAddition right acceptVisitor: self.
	l := anEAddition left acceptVisitor: self.
	^ l + r  
]

{ #category : #'as yet unclassified' }
EEvaluator >> visiteEConstant: anEconstant [
	^ anEconstant value
]

{ #category : #'as yet unclassified' }
EEvaluator >> visiteMultiplication: anEExpression [ 
	| l r |
	r := anEExpression right acceptVisitor: self.
	l := anEExpression left acceptVisitor: self.
	^ l * r  
]

{ #category : #'as yet unclassified' }
EEvaluator >> visiteNegation: anEExpression [ 
	^ (anEExpression expression acceptVisitor: self) negated 
]

{ #category : #'as yet unclassified' }
EEvaluator >> visiteRaisedTo: anExpression [ 
	^  (anExpression left acceptVisitor: self) raisedTo: (anExpression right acceptVisitor: self)
]

{ #category : #'as yet unclassified' }
EEvaluator >> visiteVariable: anEconstant [ 
	^ anEconstant id 
]
