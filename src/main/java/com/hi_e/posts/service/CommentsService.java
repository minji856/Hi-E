package com.hi_e.posts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hi_e.posts.entity.Comments;
import com.hi_e.posts.repository.CommentRepository;

@Service
public class CommentsService {

    private final CommentRepository commentRepository;

    @Autowired
    public CommentsService(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }

    public List<Comments> getCommentsByPostId(Long postId) {
        return commentRepository.findByPostsId(postId);
    }

    public void saveComment(Comments comment) {
        commentRepository.save(comment);
    }
}