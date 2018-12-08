---

- name: Make master schedulable
  command: "kubectl taint nodes {{ ansible_hostname }} node-role.kubernetes.io/master:NoSchedule-"
