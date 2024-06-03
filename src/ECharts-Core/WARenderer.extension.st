Extension { #name : #WARenderer }

{ #category : #'*echarts-core' }
WARenderer >> eCharts [
	^ (EChartsClass context: self context)
		rendererClass: self species;
		yourself
]

{ #category : #'*echarts-core' }
WARenderer >> eCharts: anObject [
	^ self eCharts with: anObject
]
