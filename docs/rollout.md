# Rollout

Sometimes, you may want to rollback a Deployment; for example, when the Deployment is not stable, such as crash looping. By default, all of the Deployment's rollout history is kept in the system so that you can rollback anytime you want (you can change that by modifying revision history limit).

> source: https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#rolling-back-a-deployment