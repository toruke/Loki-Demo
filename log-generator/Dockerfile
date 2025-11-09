FROM alpine:latest

# Installe bash et jq pour générer des logs JSON
RUN apk add --no-cache bash jq

# Copie le script de génération de logs
COPY generate_logs.sh /generate_logs.sh
RUN chmod +x /generate_logs.sh

# Génère les logs dans un fichier monté
CMD ["/generate_logs.sh"]

