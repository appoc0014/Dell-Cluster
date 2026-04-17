{{- define "singlepod.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "singlepod.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- default .Values.name (include "singlepod.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
