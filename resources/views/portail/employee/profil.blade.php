@extends('layoutsddd.app')

@section('title', 'Portail/profil - KIT SERVICES')

@section('content')

<h1>Bonjour</h1>
    <p>{{__('Nom '). $employees->employee_id}}</p>
@endsection
