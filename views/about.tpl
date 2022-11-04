(** default code https://zesty.org/services/web-engine/introduction-to-parsley/parsley-autolayout **)

<style>
    .section {
        text-align : center;
        margin-bottom : 100px;
        font-family: arial;
    }
    .container {
        width : 70%;
        margin : auto;
        padding : 100px;
        color: #222;
    }
    .header p {
        width : 700px;
        margin : auto;
    }
    .team-members {
        display : flex;
        justify-content : space-around;
    }
    .members {
        flex : 1;
        width : 33%;
    }
    .member-image {
        width : 300px;
    }
    .services {
        display : flex;
        justify-content : space-around;
    }
    .service {
        width : 33%;
        text-align : center;
        padding : 50px;
        
    }
    .service:hover {
        box-shadow: 0 0 20px #ccc;
    }
    .service img {
        width : 200px;
    }
    .service p { 
        width : 100%;
        font-size : 12pt;
    }
</style>

<div class="container">
    <section class="header section">
        <h1>{{this.title}}</h1>
        <p>{{this.content}}</p>
    </section>
    <section class="team-section section">
        <h1>Our Team</h1>
        <div class="team-members">
            {{ each team_member as member }}
                <div class="member">
                    <img src="{{member.image.getImage()}}" class="member-image" />
                    <h2>{{ member.name }}</h2>
                    <p>{{ member.job_title }}</p>
                </div>
            {{end-each}}
        </div>
    </section>
    <section class="section">
        <h1>What we do</h1>
        <div class="services">
            {{ each services as service }}
                <div class="service">
                    <img src="{{service.image.getImage()}}" />
                    <h2>{{ service.title }}</h2>
                    <p>{{ service.content }}</p>
                </div>
            {{ end-each }}
        </div>
    </section>
</div>