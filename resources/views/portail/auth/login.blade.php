<form method="POST" action="{{ route('employee.login.store') }}">

    @csrf

    <input
        type="text"
        name="employee_id"
        placeholder="Matricule">


    <input
        type="password"
        name="password"
        placeholder="Mot de passe">


    <button type="submit">
        Connexion
    </button>

</form>
