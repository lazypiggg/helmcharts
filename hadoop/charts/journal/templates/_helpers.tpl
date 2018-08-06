{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "journal.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "journal.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
 image:
   repository: index.alauda.cn/claas/chart-hadoop-ha
   tag: 2.7.4-0.1.0
*/}}

{{- define "image.repository.part" -}}
/claas/chart-hadoop-ha
{{- end -}}
{{- define "image.tag" -}}
2.7.4-0.1.0
{{- end -}}