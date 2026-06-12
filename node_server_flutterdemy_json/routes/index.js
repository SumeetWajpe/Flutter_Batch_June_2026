var express = require("express");
var router = express.Router();
var courses = [
  {
    id: 1,
    title: "React",
    subtitle: "A JS library",
    likes: 100,
    imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/3840px-React-icon.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    description:
      "React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library that aims to make building user interfaces based on components more seamless.",
    rating: 5,
    lastUpdated: "2026-05-23T00:00:00.000Z",
    language: "English",
    subtitles: ["English", "German", "Spanish"],
    trainer: "Jack Well",
  },
  {
    id: 2,
    title: "Node",
    subtitle: "A Server FX",
    likes: 200,
    imageUrl:
      "https://miro.medium.com/v2/resize:fit:800/1*bc9pmTiyKR0WNPka2w3e0Q.png",
    description:
      "Node.js is an open-source and cross-platform JavaScript runtime environment. It is a popular tool for almost any kind of project.",
    rating: 3,
    lastUpdated: "2026-04-23T00:00:00.000Z",
    language: "English",
    subtitles: ["English", "Spanish"],
    trainer: "Patrick Jonas",
  },
  {
    id: 3,
    title: "Angular",
    subtitle: "A JS FX",
    likes: 500,
    imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Angular_gradient_logo.png/960px-Angular_gradient_logo.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    description:
      "Angular is a comprehensive, open-source web application framework created and maintained by Google. It is primarily used to build dynamic, scalable Single-Page Applications (SPAs) using TypeScript.",
    rating: 4,
    lastUpdated: "2026-06-02T00:00:00.000Z",
    language: "English",
    subtitles: ["English", "German", "Spanish"],
    trainer: "Jacob Mansion",
  },
  {
    id: 4,
    title: "Flutter",
    subtitle: "A Cross Platform solution",
    likes: 200,
    imageUrl:
      "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
    description:
      "Flutter is an open-source UI software development kit (SDK) created by Google that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase.",
    rating: 5,
    lastUpdated: "2026-06-02T00:00:00.000Z",
    language: "English",
    subtitles: ["English", "German", "Spanish"],
    trainer: "Jacob Mansion",
  },
];
/* GET home page. */
router.get("/", function (req, res, next) {
  res.json(courses);
});

module.exports = router;
