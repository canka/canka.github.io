---
layout: post
title: "Updating App Designs for iPhone 6 and 6 Plus"
date: 2014-09-18 05:58:51 -0400
comments: true
categories: 
- ios 8
- iphone 6
- apple
- application
---

The fact that Apple is releasing not one, but two models of iPhone surprised me despite all the rumors going around. As an iOS Developer, my first impulse was a longing for the days where all you had to deal with was a 320x480 screen and place every view and not give it a second thought.
<!-- more -->

Now that the dust has somewhat settled, supporting three screens with different widths doesn’t seem much harder than supporting two. Apple had already provided the tools to handle this kind of scenario and tools like [PaintCode](http://www.paintcodeapp.com/) or [UIImage-PDF](https://github.com/mindbrix/UIImage-PDF)  make it easy to handle scalable assets.

Figuring out good practices for updating app designs seems a bit more challenging. The fact that the new iPhones have the same screen ratio as iPhone 5 makes it easy to simply scale up every component to fit screen; indeed unupdated apps are scaled up for iPhone 6 and 6+. But this is just to ensure compatibility.

When you take a look at the iPhone 6 or 6+ screen, you will note that the heights of UI Elements like navigation bars and buttons have stayed the same. The screen is utilized to convey more elements and information, rather than bigger instances of the UI elements.

There are cases however when it is preferable to preserve the ratio of an UI element. Take a look at our feed screen in Socialeyes as seen in iPhone 5:

<p style="text-align:center">
{% img /images/post/iPhone6_1.png right %}
</p>

And here is the same screen, with only minor adjustments to ensure the cell is centered:

can<p style="text-align:center">
{% img /images/post/iPhone6_2.png right %}
</p>

Clearly this not what we looking for. The left and right margins feel very unnecessary.

Let’s try preserving the margins:

<p style="text-align:center">
{% img /images/post/iPhone6_3.png right %}
</p>

This feels a bit better but proportionality feels a bit off. I don’t think our designer will be happy with this.

After increasing the height of the colored areas we reserve for activities and increasing the font size a bit, this is the result:

<p style="text-align:center">
{% img /images/post/iPhone6_4.png right %}
</p>
This looks much better. There are a lot of room for improvement but for now this will do. 

The best practices and standards for app design is in flux and I find this very exciting. Our rule of thumb for now is to fix what seems off. Hopefully we will figure out ways to make good use of the new screen sizes rather than just ensuring that things look okay.
