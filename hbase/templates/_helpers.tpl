{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "hbase.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "hbase.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}



{{/*
image: 
  repository: index.alauda.cn/claas/chart-hbase
  tag: 1.2.6-0.1.0
  {{ .Values.registryAddress }}{{- template "image.repository.part" . -}}:{{- template "image.tag" . }}
*/}}

{{- define "image.repository.part" -}}
/claas/chart-hbase
{{- end -}}
{{- define "image.tag" -}}
1.2.6-0.1.0
{{- end -}}