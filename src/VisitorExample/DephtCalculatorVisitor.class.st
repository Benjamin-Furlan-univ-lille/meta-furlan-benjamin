Class {
	#name : #DephtCalculatorVisitor,
	#superclass : #BaseASTVisitor,
	#category : #VisitorExample
}

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitLiteralValueNode: aRBLiteralValueNode [ [ ^ self visitNode: aRBLiteralValueNode ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitMessageNode: aRBMessageNode [ [ 
	^ self visitNode: aRBMessageNode ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitMethodNode: aRBMessageNode [ [ ^ self visitNode: aRBMessageNode ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitNode: aNode [ [ ^ 1 + (aNode children inject: 0 into: [ :max :node | max max: (node acceptVisitor: self) ] ) ] 
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitSelfNode: aSelfNode [ [ ^ self visitNode: aSelfNode ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitSequenceNode: aRBSequenceNode [ [ ^ self visitNode: aRBSequenceNode ]
]
