Class {
	#name : #DephtCalculatorVisitor,
	#superclass : #Object,
	#category : #VisitorExample
}

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitLiteralValueNode: aRBMessageNode [ [ ^ 1  ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitMSequenceNode: aRBMessageNode [ [ ^ 1 + (aRBMessageNode  children inject: 0
	into: [ :max :node | max max: (node acceptVisitor: self)  ] ) ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitMessageNode: aRBMessageNode [ [ 
	^ 1 + (aRBMessageNode children 
	 inject: 0
	 into: [ :max :node | max max: (node acceptVisitor: self ) ])
	 ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitMethodNode: aRBMessageNode [ [ ^ 1 + (aRBMessageNode  children inject: 0
	into: [ :max :node | max max: (node acceptVisitor: self)  ] ) ]
]

{ #category : #'as yet unclassified' }
DephtCalculatorVisitor >> visitSelfNode: aSelfNode [ [ ^ 1 ]
]
