cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  rheumatological-disease-polyarthritis---primary:
    run: rheumatological-disease-polyarthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  rheumatoid-rheumatological-disease---primary:
    run: rheumatoid-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-polyarthritis---primary/output
  rheumatological-disease---primary:
    run: rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: rheumatoid-rheumatological-disease---primary/output
  rheumatological-disease-tuberculosis---primary:
    run: rheumatological-disease-tuberculosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: rheumatological-disease---primary/output
  polyneuropathy-rheumatological-disease---primary:
    run: polyneuropathy-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-tuberculosis---primary/output
  myopathy-rheumatological-disease---primary:
    run: myopathy-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: polyneuropathy-rheumatological-disease---primary/output
  discoid-rheumatological-disease---primary:
    run: discoid-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: myopathy-rheumatological-disease---primary/output
  rheumatological-disease-sclerosis---primary:
    run: rheumatological-disease-sclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: discoid-rheumatological-disease---primary/output
  rheumatological-disease-dermatopolymyositis---primary:
    run: rheumatological-disease-dermatopolymyositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-sclerosis---primary/output
  systemic-rheumatological-disease---primary:
    run: systemic-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-dermatopolymyositis---primary/output
  renal-rheumatological-disease---primary:
    run: renal-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: systemic-rheumatological-disease---primary/output
  rheumatological-disease-erythematosus---primary:
    run: rheumatological-disease-erythematosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: renal-rheumatological-disease---primary/output
  acute-rheumatological-disease---primary:
    run: acute-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-erythematosus---primary/output
  rheumatological-disease-circumscribed---primary:
    run: rheumatological-disease-circumscribed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: acute-rheumatological-disease---primary/output
  rheumatological-disease-specified---primary:
    run: rheumatological-disease-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-circumscribed---primary/output
  rheumatological-disease-scleroderma---primary:
    run: rheumatological-disease-scleroderma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-specified---primary/output
  other-rheumatological-disease---primary:
    run: other-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-scleroderma---primary/output
  rheumatological-disease-disseminated---primary:
    run: rheumatological-disease-disseminated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: other-rheumatological-disease---primary/output
  rheumatological-disease-libmansacks---primary:
    run: rheumatological-disease-libmansacks---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-disseminated---primary/output
  rheumatological-disease-organ---primary:
    run: rheumatological-disease-organ---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-libmansacks---primary/output
  arthropathy-rheumatological-disease---primary:
    run: arthropathy-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-organ---primary/output
  rheumatological-disease-spine---primary:
    run: rheumatological-disease-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: arthropathy-rheumatological-disease---primary/output
  rheumatological-disease-shoulder---primary:
    run: rheumatological-disease-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-spine---primary/output
  rheumatological-disease-finger---primary:
    run: rheumatological-disease-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-shoulder---primary/output
  rheumatological-disease-ankle---primary:
    run: rheumatological-disease-ankle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-finger---primary/output
  seronegative-rheumatological-disease---primary:
    run: seronegative-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-ankle---primary/output
  rheumatological-disease-nodule---primary:
    run: rheumatological-disease-nodule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: seronegative-rheumatological-disease---primary/output
  multiple-rheumatological-disease---primary:
    run: multiple-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-nodule---primary/output
  rheumatological-disease-felty's---primary:
    run: rheumatological-disease-felty's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: multiple-rheumatological-disease---primary/output
  visceral-rheumatological-disease---primary:
    run: visceral-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-felty's---primary/output
  juvenile-rheumatological-disease---primary:
    run: juvenile-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: visceral-rheumatological-disease---primary/output
  nonarticular-rheumatological-disease---primary:
    run: nonarticular-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: juvenile-rheumatological-disease---primary/output
  seropositive-rheumatological-disease---primary:
    run: seropositive-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: nonarticular-rheumatological-disease---primary/output
  rheumatological-disease-caplan's---primary:
    run: rheumatological-disease-caplan's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: seropositive-rheumatological-disease---primary/output
  palindromic-rheumatological-disease---primary:
    run: palindromic-rheumatological-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-caplan's---primary/output
  rheumatological-disease-region---primary:
    run: rheumatological-disease-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: palindromic-rheumatological-disease---primary/output
  rheumatological-disease-rheumatica---primary:
    run: rheumatological-disease-rheumatica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-region---primary/output
  rheumatological-disease-fibrositis---primary:
    run: rheumatological-disease-fibrositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-rheumatica---primary/output
  rheumatological-disease-forms---primary:
    run: rheumatological-disease-forms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-fibrositis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: rheumatological-disease-forms---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
