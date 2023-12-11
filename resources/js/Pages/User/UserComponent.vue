<template>
    <div class="container">
        <h1 class="title">Hello World</h1>
        <div> 
            <a href="/login" class="button">Go to Login</a>
            <a href="/register" class="button">Register</a>
        </div>
    </div>
</template>

<style>
.container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

.title {
    font-size: 24px;
    text-align: center;
}

.button {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
}

.button:hover {
    background-color: #0056b3;
}
</style>
