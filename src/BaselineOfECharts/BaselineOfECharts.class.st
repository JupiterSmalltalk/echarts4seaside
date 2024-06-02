Class {
	#name : #BaselineOfECharts,
	#superclass : #BaselineOf,
	#category : #BaselineOfECharts
}

{ #category : #loading }
BaselineOfECharts class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'echarts4seaside' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'docs'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfECharts >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'ECharts'
		]
]
