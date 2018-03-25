feedparser = require('feedparser-promised')

import BlogPost from "../models/BlogPost"
import logger from '../log'

URL = "http://blog.algoprog.ru/feed.xml"

download = () ->
    _debug_marker = {qwe: '154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154_154'}
    posts = await feedparser.parse(URL)
    realIds = {}
    promises = []

    for post in posts
        realIds[post.guid] = true
        post = new BlogPost
            _id: post.guid
            title: post.title
            link: post.link
            date: post.pubdate
        promises.push(post.upsert())

    _debug_marker = {qwe: '155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155_155'}
    for oldPost in await BlogPost.find({})
        if not realIds[oldPost._id]
            promises.push(oldPost.remove())

    _debug_marker = {qwe: '156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156_156'}
    await Promise.all(promises)


running = false

wrapRunning = (callable) ->
    () ->
        if running
            logger.info "Already running downloadContests"
            return
        try
            running = true
            _debug_marker = {qwe: '157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157_157'}
            await callable()
        finally
            running = false

export run = wrapRunning () ->
    logger.info "Downloading blog posts"
    _debug_marker = {qwe: '158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158_158'}
    await download()
    logger.info "Done downloading blog posts"
