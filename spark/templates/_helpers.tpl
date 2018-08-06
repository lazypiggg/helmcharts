{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 -}}
{{- end -}}

{{/*
Create fully qualified names.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "master-fullname" -}}
{{- $name := default .Chart.Name .Values.Master.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}

{{- define "webui-fullname" -}}
{{- $name := default .Chart.Name .Values.WebUi.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}

{{- define "worker-fullname" -}}
{{- $name := default .Chart.Name .Values.Worker.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}

{{- define "zeppelin-fullname" -}}
{{- $name := default .Chart.Name .Values.Zeppelin.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}



{{/*
spark:
  Image: "index.alauda.cn/claas/chart-spark"
  ImageTag: "2.0.0-0.1.0"

zeppelin:
Image: "index.alauda.cn/claas/chart-zeppelin"
ImageTag: "0.7.3-0.1.0"
  {{ .Values.registryAddress }}{{- template "spark.image.repository.part" . -}}:{{- template "spark.image.tag" . }}

  {{ .Values.registryAddress }}{{- template "zeppelin.image.repository.part" . -}}:{{- template "zeppelin.image.tag" . }}
*/}}

{{- define "spark.image.repository.part" -}}
/claas/chart-spark
{{- end -}}
{{- define "spark.image.tag" -}}
2.0.0-0.1.0
{{- end -}}

{{- define "zeppelin.image.repository.part" -}}
/claas/chart-zeppelin
{{- end -}}
{{- define "zeppelin.image.tag" -}}
0.7.3-0.1.0
{{- end -}}