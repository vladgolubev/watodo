Meteor.startup(
    function () {
        var array =[{
                todo: "З’їздити в Карпати",
                criteriya: ["allDay",
                    "15-50",
                    "introvert",
                    "ambivert",
                    "avarageWealth",
                    "noFriends",
                    "1-3Friends",
                    "More3Friends"]
            },
            {
                todo: "Сходити в музей",
                criteriya: ["More50Years",
                    "introvert",
                    "ambivert",
                    "avarageWealth",
                    "LowWealth",
                    ">AvarageWealth",
                    "noFriends",
                    "1-3Friends",
                    "More3Friends"]
            },
            {
                todo: "Організуй мітинг",
                criteriya: [
                    "15-50",
                    "More50Years",
                    "extravert",
                    "avarageWealth",
                    "LowWealth",
                    ">AvarageWealth",
                    "noFriends",
                    "1-3Friends",
                    "More3Friends",
                    "<2hourFT",
                    "2-6FT",
                    ">6FT"]
            },
            {
                todo: "Почитай статтю по професії",
                criteriya: [
                    "15-50",
                    "More50Years",
                    "introvert",
                    "ambivert",
                    "avarageWealth",
                    "LowWealth",
                    ">AvarageWealth",
                    "VeryRich",
                    "noFriends",
                    "1-3Friends",
                    "<2hourFT",
                    "2-6FT",
                    ">6FT"]
            },
            {
                todo: "Організуй вуличний виступ",
                criteriya: [
                    "<15Years",
                    "15-50",
                    "More50Years",
                    "extravert",
                    "LowWealth",
                    ">AvarageWealth",
                    "VeryRich",
                    "noFriends",
                    "More3Friends",
                    "2-6FT",
                    ">6FT"]
            },
            {
                todo: "Виграй гру 2048",
                criteriya: [
                    "<15Years",
                    "15-50",
                    "introvert",
                    "ambivert",
                    "extravert",
                    "avarageWealth",
                    "LowWealth",
                    ">AvarageWealth",
                    "VeryRich",
                    "noFriends",
                    ">6FT"]
            },
            {
                todo: "Зроби перестановку в кімнаті",
                criteriya: [
                    "15-50",
                    "introvert",
                    "ambivert",
                    "avarageWealth",
                    "LowWealth",
                    "noFriends",
                    "1-3Friends",
                    "More3Friends",
                    "<2hourFT",
                    "2-6FT",
                    ">6FT"]
            }
          /*  {
                todo: "",
                criteriya: [
                    "<15Years",
                    "15-50",
                    "More50Years",
                    "introvert",
                    "ambivert",
                    "extravert",
                    "avarageWealth",
                    "LowWealth",
                    ">AvarageWealth",
                    "VeryRich",
                    "noFriends",
                    "1-3Friends",
                    "More3Friends",
                    "<2hourFT",
                    "2-6FT",
                    ">6FT"]
            }];*/
        ];
        _.each(array, function(todo){
            Todos.insert(todo)});
    }
);