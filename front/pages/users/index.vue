<template>
  <section>
    <div>
      <h1>ユーザー一覧</h1>
      <a href="/users/new" class="button">新規作成</a>
      <table>
        <thead>
          <tr>
            <th>id</th>
            <th>name</th>
          </tr>
        </thead>
        <tbody>
          <template v-for="user in users">
            <tr :key="user.id">
              <td><a :href="`/users/${user.id}`">{{ user.id }}</a></td>
              <td>{{ user.name }}</td>
            </tr>
          </template>
        </tbody>
      </table>
    </div>
  </section>
</template>

<script>
export default {
  data () {
    return {
      users: []
    }
  },
  mounted () {
    this.get()
  },
  methods: {
    get () {
      this.$axios.get(
        '/api/users'
      ).then((res) => {
        this.users = res.data
      })
    }
  }
}
</script>
