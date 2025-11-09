## Qu'est-ce que Loki et grafana ?

**Loki** est un système de journalisation (logs) inspiré de Prometheus, conçu pour être simple et économique. Il permet de collecter, stocker et interroger des logs de manière efficace. **Grafana** est une plateforme de visualisation qui permet de créer des tableaux de bord interactifs pour surveiller des métriques et des logs, notamment ceux stockés dans Loki.

---
## **Étapes pour une démo**
### **1. Cloner le repo**

- Commence par copier le projet :
  
 ```
git clone https://github.com/toruke/Loki-Demo.git 
cd Loki-Demo
 ```

- Puis lance Docker Compose :
```
 docker compose up
```
- Ouvre ensuite ton navigateur préféré (Firefox) à l'adresse : [http://localhost:3000](http://localhost:3000) _(Ici, nous sommes sur Grafana, ce qui va nous permettre de visualiser les logs.)_

---

### **2. Configurer Grafana pour utiliser Loki**

1. **Pour te connecter**, ouvre Grafana dans ton navigateur préféré (Firefox) :
    
    - Identifiant : _admin_
    - Mot de passe : _admin_ _(Changer le mot de passe n'est pas important pour cette démo.)_
2. **Ajouter Loki comme source de données** :
    
    - Va dans **Connections > Data sources**.
    - Clique sur **Add data source** et choisis **Loki**.
    - Dans le champ **URL**, entre `http://loki:3100`.
    - Sauvegarde.

---

### **3. Visualiser les logs et effectuer des requêtes**

1. **Rends-toi dans _Explore_** :
    
    - Sélectionne Loki. Tu devrais voir une interface similaire à ceci :
   
      <img width="auto" height="auto" alt="Screenshot From 2025-11-09 13-37-08" src="https://github.com/user-attachments/assets/990ecd46-5256-496c-953a-c48288da7ef0" />

2. **Utiliser le mode "Builder" pour créer une requête** :
    
    - Va dans _Select label_ et choisis le label **job**.
    - Puis, dans _Select value_, choisis la valeur **demo**.
3. **Exécuter la requête** :
    
    - Clique sur le bouton bleu **Run query** et active le bouton **Live** à côté. _(Maintenant, tu vois les logs apparaître en temps réel.)_
    - Dans _Line contains_, écris **info**. _(Maintenant, nous avons appris à filtrer les logs qui indiquent "info".)_
    - Tu peux faire de même avec un chiffre ou un autre mot-clé, et Grafana filtrera les logs correspondants.
---
