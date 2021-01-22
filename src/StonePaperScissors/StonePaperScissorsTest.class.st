Class {
	#name : #StonePaperScissorsTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
StonePaperScissorsTest >> testPaperAgainstPaper [
	self assert: (Paper new play: (Paper new)) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperisLoosing [
	self assert: (Paper new play: (Scissor new)) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testPaperisWinning [
	self assert: (Paper new play: (Stone new)) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsagainstScissor [
	self assert: (Scissor new play: (Scissor new)) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsisLoosing [
	self assert: (Scissor new play: (Stone new)) equals: #stone
]

{ #category : #tests }
StonePaperScissorsTest >> testScissorsisWinning [
	self assert: (Scissor new play: (Paper new)) equals: #scissors
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneagainstStone [
	self assert: (Stone new play: (Stone new)) equals: #draw
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneisLoosing [
	self assert: (Stone new play: (Paper new)) equals: #paper
]

{ #category : #tests }
StonePaperScissorsTest >> testStoneisWinning [ 
	self assert: (Stone new play: (Scissor new)) equals: #stone
]
