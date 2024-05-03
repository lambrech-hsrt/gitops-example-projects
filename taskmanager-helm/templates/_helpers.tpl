{{- define "todo-app.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" $name .Release.Namespace | trunc 63 | trimSuffix "-" -}}
{{- end -}}