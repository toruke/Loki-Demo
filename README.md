## Qu'est-ce que Loki et grafana ?

**Loki** est un système de journalisation (logs) inspiré de Prometheus, conçu pour être simple et économique. Il permet de collecter, stocker et interroger des logs de manière efficace. **Grafana** est une plateforme de visualisation qui permet de créer des tableaux de bord interactifs pour surveiller des métriques et des logs, notamment ceux stockés dans Loki.

---
## **Étapes pour une démo**
## 1. Cloner le repo 

- commencer par copier le projet :
````
git clone https://github.com/toruke/Loki-Demo.git
cd Loki-Demo
````

- puis lancer le compose 

````
docker compose up
````

- puis lancer votre navigateur préférer (firefox):

http://localhost:3000
ici ont est sur grafana se qui va nous permet de visualiser les logs 


## 2. configurer grafana pour utiliser Loki :

1. pour se connecter Ouvrez Grafana dans votre navigateur préférer (firefox): 
	- idendifiant : *admin*
	- mot de passe : *admin*
	(changer le mot de passe pas important ici )
2. Ajouter Loki comme source de données :
   - Aller dans **Connections -> Data source** 
   - Clique sur **Add data source** et choisis **Loki**.
   - Dans **URL**, mettez `http://loki:3100`
   - Sauvegarde.

## 3. générer des logs
ici je vais générer des logs avec python pour les envoyers à Loki.


---
